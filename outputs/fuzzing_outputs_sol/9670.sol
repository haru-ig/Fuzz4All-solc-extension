pragma solidity ^0.8.0;
contract CallPayableReceiver {
    receive() external payable {}
}
contract CallUnPayableReceiver {
    receive() external {}
}
contract CallCallerReceiver {
    receive() external {}
}
contract CallUnPayableCallerReceiver {
    receive() external {}
}
contract CallNonPayableReceiver {
    receive() external {}
}
contract CallPayableNonReceiver {
    receive() external payable {}
}
contract CallNonPayableCallerReceiver {
    receive() external payable {}
}
contract CallFallbackReceiver {
    receive() external payable {
        assembly
        {
            calldatacopy(0, 0, calldatasize)


            if success() {

                return(call(add(gas, code)))
            }


            fail()
        }
    }


    fallback () payable {}
}
