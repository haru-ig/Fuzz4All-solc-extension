pragma solidity ^0.8.0;
contract O {
    uint constant x = 2;
    uint constant y = 3;
    struct St{uint x; uint y}
    function st(St st){st.x += 3;}
}
contract O {
    use O;
    function g(uint a, uint b) internal pure returns (uint, uint) {

        return g(x, a) ^ a ^ x;
    }
}
contract O {
    use O;
    function g(St st){

        st.x = st.x ^ x;
    }
}
contract O {
    use O;
    function main() public pure returns (uint, uint){
        uint a;
        uint b;
        (a, b) = g(a, b);

        a = a + b;
        St storage storage;
        st(storage);

        return g(x, y);
    }
}
