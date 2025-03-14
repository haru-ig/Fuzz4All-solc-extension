pragma solidity ^0.8.0;
contract CallWithFallbackMutated {
    fallback() external payable {}
}

pragma solidity ^0.8.0;
 contract CallWithFallbackWithContract {

        function foo() external payable {

            fallback() external payable {}

            receive() external payable {}
        }
        fallback() external payable {}

        receive() external payable {}



        function bar() external payable {
            _;
        }
        fallback() external payable {}

        receive() external payable {}

}
