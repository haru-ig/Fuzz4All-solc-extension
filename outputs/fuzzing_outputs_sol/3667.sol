pragma solidity ^0.8.0;
contract MutateSemantic6Caller5 {
    function modifyC7Mutate(uint256 x, uint y) pure public view returns (uint) {
        return 27;
    }
    function modifyC8Mutate(uint256 x, uint y) pure public view returns (uint) {
        return 25;
    }
    function modifyC9Mutate(uint256 x, uint y) pure public view returns (uint) {
        return 17;
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic6Caller6 {
    function modifyC5(uint256 x) pure public returns (uint) {
        return 5;
    }
    function modifyC7Mutate(uint256 x, uint y) pure public returns (uint) {
        return modifyC5(y + 3) * modifyC5(y);
    }
    function modifyC8Mutate(uint256 x, uint y) pure public view returns (uint) {
        return modifyC5(y);
    }
    function modifyC9(uint256 x) pure public view returns (uint) {
        return 5;
    }
    function modifyC9Mutate(uint256 x, uint y) pure public view returns (uint) {
        return modifyC5(y + 555555) * modifyC5(modifyC9(x / 15000 + 5200));
    }
}

contract FallbackTest {
    address public addr;
    constructor(address _addr) {
        addr = _addr;
    }
    function doFallback() public pure {
        callFallback(addr);
    }
    function callFallback(address contractAddress) public pure {
        (bool success, bytes memory data) = contractAddress.call{value: 1 ether}("");
        if (!success) {
            revert("");
        }
    }
}






contract CallerTest {
    function test() public {
        FallbackTest ft = new FallbackTest(addr);
        ft.doFallback();
        ft.callFallback(addr);
    }
}
