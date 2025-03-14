pragma solidity ^0.8.0;
contract B {
    uint[128] a;
    uint[128][] b;
    contract D {
        constructor (uint a_, uint b_) public {
            a.push(_get(1));
            b.push(uint[128]([a]));
            push2();
            a.push(_get(2));
        }
        function _get(uint idx) internal pure returns (uint) {
            uint n = idx + 1;
        }
        function push2() internal {
            uint[128][2] storage c;
            c[0][0].push(0);
            c[0][0].push(0);
            c[0][1].push(0);
            c[0][1].push(0);
            c[0][2].push(0);
            c[0][2].push(0);
            push3(_get(2));
            push3(_get(2));
            push3(_get(2));
            push3(_get(2));
            push3(_get(2));
            push3(_get(2));
            push3(_get(2));
            push3(_get(2));

            c[0][0].pop();
            c[0][0].push(0);
            c[0][0].pop();
            c[0][1].pop();
            c[0][1].push(0);
            c[0][1].pop();
            c[0][2].pop();
            c[0][2].push(0);
            c[0][2].pop();
        }
        function push3(uint a) internal {
            b.push(uint[128]([a]));
        }
    }
}
contract A{
    address a;
    function A() public { a = new B(); }
}
