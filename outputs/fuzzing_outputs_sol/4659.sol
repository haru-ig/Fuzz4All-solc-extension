pragma solidity ^0.8.0;
contract Mutator2 {
    function shouldBe(uint counter) internal view returns (bool) {
        counter++;
        return true;
    }
    receive() external payable {}
    function shouldFail(uint counter) public returns (bool) {
        counter--;
        return true;
    }
}

contract Mutator1 is Mutator, Mutator2 {
    constructor() {
        Mutator.fallback();
        Mutator2.fallback();
    }
}

pragma solidity ^0.8.0;
contract Mutator3 is Mutator1 {
    constructor() {
        Mutator2.fallback();
    }
}
interface Mutator4 {
    function shouldBe(uint counter) internal view returns (bool);
    function shouldFail(uint counter) public returns (bool);
}

interface Mutator5 {
    function shouldBe(uint counter) internal view returns (bool);
}

pragma solidity ^0.8.0;
contract Mutator6 is Mutator3, Mutator5 {
    constructor () {
        Mutator1.fallback();
        Mutator2.fallback();
        Mutator3.fallback();
        Mutator5.shouldFail.value(100 ether) (1);
    }
}
