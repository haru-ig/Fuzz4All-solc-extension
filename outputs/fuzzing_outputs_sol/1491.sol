pragma solidity ^0.8.0;
import "./SemanticMutationExample2.sol";


pragma solidity >=0.8.0 <0.8.10;
contract Caller {
    function sendEtherTo(address payable _addr) public {
        SemanticMutationExample2 smartContract2 = new SemanticMutationExample2();
        try smartContract2.semanticMutationExample(_addr) {
            _addr.send(address(this).balance);
        } catch {
            revert("Failed to send Ether");
        }
    }
}
