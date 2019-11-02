Blockly.JavaScript['tfun'] = function(block) {
  var value_t1 = Blockly.JavaScript.valueToCode(block, 't1', Blockly.JavaScript.ORDER_ATOMIC);
  var value_t2 = Blockly.JavaScript.valueToCode(block, 't2', Blockly.JavaScript.ORDER_ATOMIC);
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['tapp'] = function(block) {
  var value_t1 = Blockly.JavaScript.valueToCode(block, 't1', Blockly.JavaScript.ORDER_ATOMIC);
  var value_t2 = Blockly.JavaScript.valueToCode(block, 't2', Blockly.JavaScript.ORDER_ATOMIC);
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['tvar'] = function(block) {
  var text_tvar_name = block.getFieldValue('tvar_name');
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['tid'] = function(block) {
  var text_type_id = block.getFieldValue('type_id');
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.JavaScript.ORDER_NONE];
};