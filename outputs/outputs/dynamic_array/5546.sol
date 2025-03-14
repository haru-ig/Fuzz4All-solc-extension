pragma solidity ^0.8.0;
contract Test67 {
    address payable payable1;
    uint32[] calldata data1;
    uint32[] memory data2;
    receive() payable external {
        data2.push(123);
        emit Emit1(uint128(data2.length), data2.capacity);
    }
    function Emit1(uint128 data1, uint128 data2_lenght_) public {
        payable1.call{value: data1}("");
        emit Emit2(data1, data2_lenght_);
    }
    function Emit2(uint128 data1, uint128 data2_lenght_) public { data1 = data2_lenght_; }
}
