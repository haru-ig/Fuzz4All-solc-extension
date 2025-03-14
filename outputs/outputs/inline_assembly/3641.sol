pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithoutSemantics {
  uint256 public g;
  uint256 public r;
  bytes32 public g_r_bytes32_storage;
    constructor() {
        r = 3;
        g = 4;
        a = e;
        b = a;
        a_address = a;
        g_r_bytes32_storage = keccak256(abi.encode(a, b, c, a));
    }









  function modified_constructor_test() public {}

    function modified_constructor_deployment() public {
    	a = ModifiesSquashGenerationsUsingYulWithoutSemantics(g_r_bytes32_storage).e;
    	a = ModifiesSquashGenerationsUsingYulWithoutSemantics(g_r_bytes32_storage).e;
    	a = ModifiesSquashGenerationsUsingYulWithoutSemantics(g_r_bytes32_storage).e;
    	a = ModifiesSquashGenerationsUsingYulWithoutSemantics(g_r_bytes32_storage).e;
    }
}
pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulNotCompiledBecauseOfGasEmission {
    address public a;
    address public b;
    address public c;
    constructor() {
        r = 3;
        a = e;
        d = a_address;
        b = a;
        a_address = a;
    }
