pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    function setData(uint k, uint256 y) public {}
    uint256 x;
    receive() external payable {   x = 1; }
    fallback() external payable {
        uint256 temp = 2;
        uint256 a;
        assembly {
            a := x
        }
        if(a < temp){
            x = 2;
        }
    }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionFour {
    function setData(uint k, uint256 y) public {}
    uint256 x;
    receive() external payable {   x = 1; }
    fallback() external nonpayable {
        uint x;
        assembly {
            x := x
        }
        uint256 a;
        assembly {
            a := x
        }
        if(a!= 1){
            x = 2;
        }
    }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionFive {
    function setData(uint k, uint256 y) public {}
    uint256 x;
    receive() external payable
    {
        x = 1;
    }
    fallback() external
    {
        uint256 a;
        assembly {
            a := x
        }

        if(a!= 1){
            x = 2;
        }
    }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionSix {
    function setData(uint k, uint256 y) public {}
    uint256 x;
    receive() external payable {   x = 1; }
    fallback() external payable {
        uint256 a;
        assembly {
            a := x
        }
        uint256 x;
        assembly {
            x := a
        }
        if(a!= 1){
            x = 2;
        }
    }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionSeven {
    function setData(uint k, uint256 y) public {}
    uint256 x;
    receive() external payable {   x = 1; }
    fallback() external payable {
        uint256 x;
