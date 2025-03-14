pragma solidity ^0.8.0;
contract TestMutator6 {
    bytes memory z;
    function createBytes(int _count, bytes calldata _bytes) public pure returns (bytes memory) {
        z = new bytes(_count);
        for (int i = 0; i < _count; i++)
            z[i] = uint8(_bytes[2*i+1]);
         ;
    }
    address a;
    function setAddress(address _address) public {
        a = _address;
    }
    event NewEvent();
    function set0(bytes calldata _bytes) public {
        setAddress(_bytes);
        emit NewEvent();
    }
    function getFromStorage() public view returns(address){
        return a;
    }
}
