pragma solidity ^0.8.0;
contract Contract2 {
    mapping(uint => uint) internal numbers;
    uint internal count;
    address internal admin;
   constructor(address _admin) {
    bytes memory initCode = "090160000000000000000000000000000000000000000000000000000000000";
    assembly {
        mstore(0x41, initCode)
    }
    admin = _admin;
    }
    modifier onlyAdmin(){
        require(msg.sender == admin, "Only admin can call this method");
        _;
    }
    function set(uint num, uint value) public onlyAdmin{
        require(value < 2**32, "Can't be larger than 2**32-1");
        numbers[num] = value;
        count++;
    }
    function query(uint num) public view returns(uint){
        require(0 <= num && num <= 2**32, "Index out of range");
        return numbers[num];
    }
    function printAll() public view returns(uint[] memory,uint,uint){
        uint[] memory arr = new uint[](count);
        for (uint i=0; i<count; i++)
        {
            arr[i] = numbers[i];
        }
        return (arr,uint(count),query(7));
    }
    function getAdmin() public view returns(address){
        return admin;
    }
}
