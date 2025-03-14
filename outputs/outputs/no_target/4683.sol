pragma solidity ^0.8.0;
contract D {
constructor(uint256 i) public {
y = i;
}
uint256 public x;
uint256 public y;
}

pragma solidity >=0.4.26 <0.7.0;
library library_t2 {
function get_x(D[] memory __arr) public view returns (uint256 x) {

return   __arr[2].x;
}
}
pragma solidity ^0.8.0;
uint256[] public arr;
contract contract_A92B3CB482FB94BD08B3C184FE4823E01348BA0C {
constructor(uint256 __arr) public {
arr[0] = __arr; }
uint256[2] public arr;
}
D contract_AB73B6598900FF6DACEFE18E69FFA02FA41D18D7 contract_9B44E1E48F104CD528547FB3C7AB9C07913A4680 public d;
contract C contract_CE3380084F17F5C98A3641B282F16F7EA1948A16 public f;
uint256 public g;
function test_function_11488F9B60CF5BD7D15CBB5BD1C9B3902C5C80D5() public view returns (uint256, bool) {

D storage d_mem;
uint256 __arr_0;
uint256 __ret;
bool __tmp;
uint256 __tmp___0;

 assembly {
 d_mem := mload(0x40)
 mstore(d_mem, 0x00000000000000000000000000000000000000000000000000000000000000
)
 mstore(0x40, d_mem)
 __arr_0 := __arr
 __ret := mstore(d_mem, 0x40)
 __tmp___0 := sload(0x0)
 __tmp := __tmp___0 == 0x0
 return(0x0, __tmp)
}
}
function test_function_0D7B1F8BF4CD69B0FB9DD044E056
