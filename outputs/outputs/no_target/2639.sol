pragma solidity ^0.8.0;
contract contractWithNewContracts {
    function getFrom080() public view returns(uint160){
        return 13;
    }
    function getFrom081() public view returns(uint[]){
        return [13];
    }
    function getFrom082() public view returns(uint8[]){
        return [13];
    }
    function getFrom083() public view returns(uint256){
        return 13;
    }
    function getFrom084() public view returns(int256){
        return 13;
    }
    function getFrom085() public view returns(uint8, uint256){
        return (13, 13);
    }
    function getFrom086() public view returns(uint8, uint){
        return (13, 13);
    }
    function getFrom087() public view returns(uint256, uint8, uint256){
        return (13, 13, 13);
    }
    function getFrom088() public view returns(bytes, uint8, bytes, uint256, bytes, address){
        return (abi.encode("abc", 13, abi.encodeFixedBytes("abc", 13)), 13, abi.encodeFixedBytes("abc", 13), 13, abi.encodeFixedBytes("abc", 13), 13, address(this),);
    }
    function getFrom089() public view returns(mapping(uint256 => uint)){
        uint key = 13;
        return key;
    }
    function getFrom090() public view returns(uint[3][3] memory){
        uint key1 = 13;
        uint key2 = key1;
        uint key3 = key1;
        uint memory memorykey4 = key1;
        uint memory[3][3] memory storagekey5 = key1;
        uint memory memorykey6 = key1;
        uint[] memory memorykey7 = memorykey6;
        uint8[2] memory memorykey8 = [13];
        uint8[2, 3] memory key9 = [13, 13];
        uint8[2, 3] memory key10 = [13];
        arraymemorykey11 = [13];
        int8 key12 = key1;
        uint160 memorykey13 = address(13);
        uint160[1] memory key14 = address(13);
        uint160 memorykey15 = address(13);
        address[] memory key16 = [address(13), address(23)];
        address key17 = address(key1);
        uint256[4] memory key18 = [12, 12,
