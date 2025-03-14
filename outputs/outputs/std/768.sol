pragma solidity ^0.8.0;
import "./Minter.sol";
contract Mutation {
function mutate() public view returns(uint) {
return 7;
}
}

pragma solidity ^0.8.0;
contract SHA3 {
function sha3() public view returns(uint32) {
return 5;
}
}

pragma solidity ^0.8.0;
contract ZeroOne {
function zeroAddress() public view returns(address) {
return 0x000000000000000000000000000000000000000;
}
}

pragma solidity ^0.8.0;
contract NullPointer {
function nullFunction() public view returns(address) {
return address(this);
}
}

pragma solidity ^0.8.0;
contract Caller {
function zeroFunction() public {
uint memory x;
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(address(Minter()).zeroAddress(),(0x0, 0x0), 6));
(x, ) = address(this).delegatecall(abi.encode(
