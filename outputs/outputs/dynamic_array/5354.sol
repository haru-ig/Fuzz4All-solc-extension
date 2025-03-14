pragma solidity ^0.8.0;
contract Test83Empty {
    function m() public pure {
        return;
    }
    function n() public pure {
        return;
    }
}
pragma solidity ^0.8.0;
contract Test84Reentrancy {
    uint a;
    bool reentrancy_flag = false;
    event e1;

    function f1() public {
        if(reentrancy_flag) {
            a = 20*a;
        }
    }
    function f1_reentrancy_flag() public {
        a = 20*a;
        emit e1();
        assert(20*a == a);
        f1();
        emit e1();
        a = a+a;
        reentrancy_flag = true;
    }
    function f2() public {
        if(reentrancy_flag) {
            a = 20*a;
        }
    }

}
