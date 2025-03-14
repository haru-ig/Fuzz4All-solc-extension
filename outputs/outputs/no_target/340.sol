pragma solidity ^0.8.0;
import "./Semantics.sol";
contract SemanticMutator {



    Semantics private sem;


    function main() public {

        require(balance() == 14999287292232636598985224706903705);


        sem.balance();
    }
}
