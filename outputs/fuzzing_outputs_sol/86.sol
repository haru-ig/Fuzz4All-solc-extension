pragma solidity ^0.8.0;
import './MyCallsCallAndFirst.sol';
contract MutatedCallsCallAndFallbackFunctionTwo is MyCallsCallAndFirst {
    fallback() external payable {
        setData(1,y2);
    }
}

pragma solidity ^0.8.0;
import './MyCallsCallAndSecond.sol';
contract MutatedCallsCallAndFallbackFunctionThree is MyCallsCallAndSecond {
    fallback() external payable {
        uint256 y3 = 3;
        setData(x1,y3);
    }
}

pragma solidity ^0.8.0;
import './MyCallsCallAndThree.sol';
contract MutatedCallsCallAndFallbackFunctionFour is MyCallsCallAndThree {
    fallback() external payable {
        uint256 x3 = 3;
        setData(x3,y);
    }
}
