pragma solidity ^0.8.0;
contract Mutator {
    function shouldBe(uint counter) internal view returns (bool) {
        assembly {

            counter := counter+1

            if mod(counter,1000)!= 0 { revert(counter) }

            return(true) }
    }
}
