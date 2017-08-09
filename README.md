# IR

IR build an internal representation of Simulink models using matlab's struct.

## Configuration
You can set some configuration for parameters you want in your IR in
IR_config.m.
For more information look at the description in IR_config.

## Example
You can call cocosim_IR on the example exemple/Model_example.slx file.
ir_struct = cocosim_IR('exemple/Model_example', true). Add true if you want
to save the struct in a json file (Model_example.json).