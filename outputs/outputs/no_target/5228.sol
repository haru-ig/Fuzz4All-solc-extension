pragma solidity ^0.8.0;
contract SimpleExample17 {
    uint num = uint(uint256(uint160(266d)));
    function doSomething(bytes memory _data) public {
        num = num < 1? 1 : (num == 5? 5 : num);
        num = num > 5? 5 : ( num <= 1? 1 : num );
    }
}
pragma solidity ^0.8.0;
