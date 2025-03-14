pragma solidity ^0.8.0;
contract Modifications2 {
    constructor(uint256 _x, uint256 _y) public {
        b = _y;
    }
    function toUint256()
    {
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result_ := mload(0)
            returndatacopy(0, 0, 32)
            mstore(0, result_)
        }
    }
    function f() public returns (uint) {
        uint x = a1 / 2 > b1 / 2? a / 2 : b / 2;
        uint y = a2 / 2 > b2 / 2? a1 / 2 : b1 / 2;
        uint z = 0;
        z = x > y? x : y;
        z = x > y? x : y;
        return z;
    }
    uint constant a1 = 42;
    uint constant a2 = 42;
    uint constant b1 = 42;
    uint constant b2 = 42;
}"""

@pytest.mark.parametrize("filename", [filename for filename in os.listdir(test_dir) if filename.endswith(".sol") and "Sem" not in filename])
def test_valid_code(filename):
    """ Tests whether the provided Solidity file can be transpiled to Vyper.
    For a full overview, please visit https:
    """
    code = get_test_file(filename)
    with pytest.raises(Exception) as e_res:
        compiler.compile_file(code, filename)
        ex = e_res.value
        assert ex.original in [
        r"SemanticError: [0x20000]: Arithmetic operation overflow.",
        r"VyperException: \[0x20000]: Arithmetic operation underflow.",
        r"SemanticError: [0x804]: Type mismatch",
        r"SemanticError: [0x20001]: Invalid literal"]


@pytest.mark.parametrize("filename", [filename for filename in os.listdir(test_dir) if filename.endswith(".sol") and "Sem" not in filename])
def test_semantic_error(filename):
    """Tests whether the provided Solidity file triggers a valid SemanticsError
    When provided with code that will not compile, this test is used to ensure that
    we correctly raise the original exception provided by Solidity during semantic compilation.
    """
    code = get_test_file(filename)
    with pytest.raises(SemanticsError):
        compiler.compile_
