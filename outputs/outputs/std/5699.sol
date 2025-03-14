pragma solidity ^0.8.0;
contract Array0{
    uint[] memory m;
    constructor(){
        m = 6 * new uint[](2);
    }
    function getMin() public view returns (uint){
        uint result;
        for (uint i = 0; i < m.length - 1; i++) {
            result = uint(uint80(keccak256(abi.encodePacked(result, m[i])) ^ m[i]));
        }
        return result;
    }
    function getMax() public view returns (uint){
        uint result;
        for (uint i = 0; i < m.length; i++) {
            result = uint(uint80(keccak256(abi.encodePacked(result, m[i])) ^ m[i]));
        }
        return result;
    }
    function setMax(uint newValue) public {
        require(newValue <= uint(m.length - 1));
        m[0] = uint(newValue);
        m[uint(m.length - 1)] = uint(m.length);
    }
    function size() public view returns (uint){
        return m.length;
    }
    function setMin(uint newValue) public {
        require(newValue >= 1);
        m[0] = uint(newValue);
        m[1] = uint(m.length);
    }
    function sort() public {
        m.sort();
    }
}

pragma solidity ^0.8.0;
contract Random{
    uint256 seed;
    constructor(uint256 _seed) {
        seed = _seed;
    }
    function randomUint() public view returns (uint256 random){
        random = seed ^ uint256(keccak256(abi.encodePacked(uint(random))));
        seed = uint256(uint80(keccak256(abi.encodePacked(uint(seed)), uint(seed % 0xffffffff))))) ^ random;
    }
    function randomAddress() public view returns (address random){
        random = uint256(uint80(keccak256(abi.encodePacked(address(random))))) ^ uint256(seed);
        seed = uint256(uint80(keccak256(abi.encodePacked(uint(seed.toUInt64().toEthSignedString())), uint(seed % 0xffffffff))))) ^ random;
    }
    function randomString() public view returns (string memory){
        string memory retVal = string(abi.encodePacked(randomUint(), '.', randomUint()));
        return retVal;
    }
    function randomBytes(uint numBytes) public view returns (bytes memory){
        bytes memory retVal = new bytes(numBytes);
        for(uint i = 0; i < numBytes; i++){
            uint8 newInt = uint8(uint80(keccak256(abi.encodePacked(
