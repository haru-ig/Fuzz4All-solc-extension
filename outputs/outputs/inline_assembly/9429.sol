pragma solidity ^0.8.0;
contract M {
    uint public counter = 0;
    fallback() external {
        unchecked {
            require(counter!= 0);
            counter += 1;
        }
        counter -= 1;
    }
}
pragma solidity ^0.4.25;

address owner;

contract Test {
    M m = M();
    fallback() external {
        unchecked {m.counter++;}
        unchecked {m.counter--;}
        unchecked {m.counter = m.counter + 1;}
    }
}
