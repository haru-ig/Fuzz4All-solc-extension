pragma solidity ^0.8.0;
contract MyStorage {
    contract A {
        struct B {
            uint[7] ccc;
        }
        mapping(address => mapping(address => uint)) private my;
        MyData d;

        function f() public {
            A sss;
            sss.my.spendingWallet[msg.sender].d.bbb[0]=1;
        }

        function g() public {
            A sss;
            sss.my.spendingWallet[msg.sender].d.bbb[1] = 1;
        }
    }
    A a;
    mapping(address => mapping(address => uint)) private sendingWallet;

    function h() public {
        a.a.g();
        A sss;
        a.a.a.g();
    }

    function main() public {
        sendingWallet[msg.sender].d.bbb[0]=1;
        sendingWallet[msg.sender].d.bbb[1]=1;

        uint[8][7] fff;
        fff[0] = [1,2,3,4,5,6];

        A sss;
        sss.my.spendingWallet[msg.sender].d.bbb = [1];

        A ttt;
        ttt.a.a.a.a.g();
    }
}
