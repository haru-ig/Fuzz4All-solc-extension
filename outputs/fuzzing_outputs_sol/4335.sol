pragma solidity ^0.8.0;
contract TestMutatedFallbackCallerNoModifier {
    modifier onlyWithFallback() {
        _;
        fallback();
    }
    fallback() external payable {
        revert("Fallback function doesn't have the 'payable' modifier.");
    }
    receive() external payable {
        revert("Fallback function doesn't have a receive function.");
    }
}


pragma solidity ^0.8.0;
contract CallerNoModifier {
    function () external payable {}
}
pragma solidity ^0.8.0;
contract CallerWithoutFallback {
    function callMe() external payable {}
}

pragma solidity ^0.8.0;
contract CallerYesModifier {
    function () external payable {}
    receive() external payable {}
}
pragma solidity ^0.8.0;
contract CallerYesFallback {
    function callMe() external payable {}
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract FallbackNever {
    function doSth() payable external {}
}
pragma solidity ^0.8.0;
contract FallbackOnEmptyData {
    function doSth() payable external {}
    receive() external {}
}

pragma solidity ^0.8.0;
contract FallbackWithNonPayable {
    function doSth() payable external {}
    fallback() {}
}
pragma solidity ^0.8.0;
contract FallbackWithNonReceive {
    function doSth() payable external {}
    receive() {}
}
pragma solidity ^0.8.0;
contract FallbackWithNonFallback {
    function doSth() payable external {}
    receive() external {}
    fallback() {}
}
