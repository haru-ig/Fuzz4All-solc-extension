pragma solidity ^0.8.0;
contract Test29603 {
       uint256[] internal dataArray;
}
contract Test29603 {
    struct MyStruct {
        uint256 num;
    }
}
contract Test29603 {
    uint256 a;
    constructor() public { a = 1; }

    function testMe(MyStruct memory a) public {
        require(abi.encodePacked(a).length == 36);
        require(abi.encodePacked(a).length == 46);
        dataArray = [1, [ MyStruct(0), 12, 2, 3, 5, 1, 45 ]];
    }
}
