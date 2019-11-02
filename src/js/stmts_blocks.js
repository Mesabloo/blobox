Blockly.JavaScript['definition'] = function(block) {
  var text_fun_name = block.getFieldValue('fun_name');
  var value_fun_def = Blockly.JavaScript.valueToCode(block, 'fun_def', Blockly.JavaScript.ORDER_ATOMIC);
  // TODO: Assemble JavaScript into code variable.
  var code = '...;\n';
  return code;
};

Blockly.JavaScript['declaration_definition'] = function(block) {
  var text_fun_name = block.getFieldValue('fun_name');
  var value_fun_type = Blockly.JavaScript.valueToCode(block, 'fun_type', Blockly.JavaScript.ORDER_ATOMIC);
  var value_fun_val = Blockly.JavaScript.valueToCode(block, 'fun_val', Blockly.JavaScript.ORDER_ATOMIC);
  // TODO: Assemble JavaScript into code variable.
  var code = '...;\n';
  return code;
};