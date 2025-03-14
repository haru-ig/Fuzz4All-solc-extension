pragma solidity ^0.8.0;

contract CallWithFallbackMutator {
    bool public isFinished = false;
    bool public isPayed;
    function onFallback(address) public payable virtual {
    }
    function fallback() public payable {
        if (isPayed) {
            isFinished = true;
        }
        if (msg.data.length > 0) {
            assembly {
                let result := mload(add(msg.data, 0x20))
                switch result
                case 0 {
                    {
                        revert ("")
                    }
                }
                default {

                }
            }
        }
    }
    function mutate() public {
        bool _ = isPayed;
    }
    function setPay() public payable {
        isPayed = true;
    }
}
