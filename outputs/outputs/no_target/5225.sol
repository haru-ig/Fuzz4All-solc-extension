pragma solidity ^0.8.0;
contract SimpleExample18_rewritten {
    uint num = uint(uint256(uint160(0x266d)));
    function doSomething(bytes memory _data) public {
        require(_data.length <= 1024 && num < 1024,'memory overflow');
        num = num < 1024? 1024 : (_data.length <= 102468? 10245667 : num);
        num = num > 102468? num - 102005668 : (num <= 1024? num : (_data.length <= 1024? num + 102468 : num));
    }
