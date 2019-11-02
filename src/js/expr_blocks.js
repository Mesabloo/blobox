Blockly.JavaScript['elam'] = function(block) {
  var text_var_name = block.getFieldValue('var_name');
  var value_expression = Blockly.JavaScript.valueToCode(block, 'expression', Blockly.JavaScript.ORDER_ATOMIC);
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['eapp'] = function(block) {
  var value_e1 = Blockly.JavaScript.valueToCode(block, 'e1', Blockly.JavaScript.ORDER_ATOMIC);
  var value_e2 = Blockly.JavaScript.valueToCode(block, 'e2', Blockly.JavaScript.ORDER_ATOMIC);
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['eid'] = function(block) {
  var text_var_name = block.getFieldValue('var_name');
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['elit'] = function(block) {
  var value_literal = Blockly.JavaScript.valueToCode(block, 'literal', Blockly.JavaScript.ORDER_ATOMIC);
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.JavaScript.ORDER_NONE];
};