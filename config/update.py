'''
Opsero Electronic Design Inc.

data.json is intended to be a centralized source of information regarding all of the target
designs and it ensures that the documentation and makefiles are consistent.
When data.json is updated with new information, this Python script can be run to update
the makefiles and the .gitignore. We typically use this script when adding/removing
target designs.

This is a Vivado-only repo (no root Makefile, no Vitis, no PetaLinux).
'''

import os
import json

# Load the JSON data
def load_json(filename):
    with open(filename) as f:
        return json.load(f)

def get_vivado_targets(data):
    targets = []
    targets.append('BD_NAME = {}'.format(data['bd_name']))
    targets += ['{}_target := 0'.format(design['label']) for design in data['designs']]
    return(targets)

def get_vivado_build_targets(data):
    targets = []
    for design in data['designs']:
        lanes_tcl = '{{{}}}'.format(' '.join(str(l) for l in design['lanes']))
        target = 'dict set target_dict {} {{ {} {} {} {} {} }}'.format(
            design['label'], design['url'], design['boardname'],
            design['bdscript'], design['lanecfg'], lanes_tcl)
        targets.append(target)
    return(targets)

def get_ignore_paths(data):
    paths = []
    for design in data['designs']:
        p = 'Vivado/{}/'.format(design['label'])
        paths.append(p)
    return(paths)

# Update a file that uses "# UPDATER START" and "# UPDATER END" tags
def update_file(file_path, targets):
    # Read the content of the file
    with open(file_path, 'r') as infile:
        lines = infile.readlines()

    # Open the same file in write mode to overwrite it
    with open(file_path, 'w') as outfile:
        inside_updater = False

        for line in lines:
            if '# UPDATER START' in line:
                # Write the start tag to the file
                outfile.write(line)
                # Write the targets
                for l in targets:
                    outfile.write("{}\n".format(l))
                inside_updater = True
            elif '# UPDATER END' in line:
                # Write the end tag to the file
                outfile.write(line)
                inside_updater = False
            elif not inside_updater:
                # Write the line if not inside the updater block
                outfile.write(line)

# Make sure that there is a constraints file for all target designs
def check_constraints(data):
    for design in data['designs']:
        filename = '../Vivado/src/constraints/{}.xdc'.format(design['label'])
        if not os.path.isfile(filename):
            print('WARNING: No constraints file found for target', design['label'])

# Read the JSON data
data = load_json('data.json')

# Update the Vivado makefile
vivado_makefile = '../Vivado/Makefile'
vivado_targets = get_vivado_targets(data)
update_file(vivado_makefile, vivado_targets)

# Update the Vivado build.tcl
vivado_build_tcl = '../Vivado/scripts/build.tcl'
vivado_build_targets = get_vivado_build_targets(data)
update_file(vivado_build_tcl, vivado_build_targets)

# Update the gitignore
gitignore = '../.gitignore'
gitignore_paths = get_ignore_paths(data)
update_file(gitignore, gitignore_paths)

# Check constraints
check_constraints(data)
