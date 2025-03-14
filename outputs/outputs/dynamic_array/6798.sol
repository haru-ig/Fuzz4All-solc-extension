pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
address A;
contract T35_call_data_array_semantics4 {
    address[] public arr2;
    function add() public {
      A = address(new T35_call_data_array_semantics4());
      emit Emit(address(A));
      require(A.calldata.length == 0);
    }
    event Emit(address _address);
}
