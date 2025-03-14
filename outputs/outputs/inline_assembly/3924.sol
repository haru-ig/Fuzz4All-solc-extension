pragma solidity ^0.8.0;
contract A is B, C, D {

  function foo() public {}
}
contract B {
  function foo() public pure {}
}
contract C {
  function foo() public pure {}
}
contract D is A, B {

  function foo() public pure {}
}"""


def test_contracts_with_inline_assembly(ethereum_compiled_contracts_data):
    # Assert ethereum compiler returned the correct information.
    assert ethereum_compiled_contracts_data.contract_source == inline_assembly_contract


if __name__ == '__main__':
    pytest.main(sys.argv)
