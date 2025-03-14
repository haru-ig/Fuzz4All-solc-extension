pragma solidity ^0.8.0;
contract Mutator4_0 {



    function shouldBe(uint counter) public {
        if (counter > 20 && counter < 100) {

            counter = counter + 1;
        } else {

            revert();
        }
    }
}

pragma solidity ^0.8.0;
contract Mutator4_1 {

    function shouldBe(uint counter) public payable returns (uint) {
        counter = counter + 1;
        return counter;
    }
}

pragma solidity ^0.8.0;
contract Mutator4_2 {

    function shouldBe(uint counter) public view returns (uint) {
        counter = counter + 1;
        return counter;
    }
}

pragma solidity ^0.8.0;
contract Mutator5 {
    struct Counter {
        uint counter;
    }
    Counter private _counter;
    function incrementWithFallback() public {
        uint currentCounter = _counter.counter;
        uint newCounter = currentCounter + 1;
        _counter.counter = newCounter;
    }
}

pragma solidity ^0.8.0;
interface IMutator5 {
    function shouldBe(uint counter) external;
}



pragma solidity ^0.8.0;
interface IMutator6 {
    function shouldBe(uint, uint) external;
}




/* Please write a program that will return the
