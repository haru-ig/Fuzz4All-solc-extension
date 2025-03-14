pragma solidity ^0.8.0;
contract SimpleExample18 {
    uint num = uint(uint(uint256(uint160(0))));
    function doSomething(bytes memory _data) public {
        num = uint(uint256) (
            (num < 1? 1 : ( num == 5? 5 : num )) &
             (num > 5? 5 : num <= 1? 1 : num)));
    }
}
