pragma solidity ^0.8.0;
contract aa is Ia {

    bool private v;

    constructor(bool _v) {
        v = _v;
    }

    function test(address sender)external view {
        log0("sender is " ++ addressToString(sender));
        log1(0);
        log2(10);
        log3(-1);
        log4(type(uint160));
    }


    function log0(string memory _a)public view {
        if (v == false) {
            revert("assertion failure");
        }
    }
    function log1(int _a)public view {
        if (v == false) {
            revert("assertion failure");
        }
    }
    function log2(uint256 _a)public view {
        if (v == false) {
            revert("assertion failure");
        }
    }
    function log3(address _a)public view {
        if (v == false) {
            revert("assertion failure");
        }
    }
    function log4(uint160 _a)public view {
        if (v == false) {
            revert("assertion failure");
        }
    }
}

address sender = msg.sender;

a;
aa{v:true}
aa{v:false}
