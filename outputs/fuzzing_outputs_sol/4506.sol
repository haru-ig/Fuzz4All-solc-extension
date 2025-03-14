pragma solidity ^0.8.0;
contract SemanticDifferent {
    function get(uint z) public {
        emit MyEvent(3 * z + 3 * z + 1 * z + 5);
    }
    event MyEvent(uint z);
}




pragma solidity ^0.8.0;
contract SemanticDifferent {
    function get(uint z) public {
        emit MyEvent(3 * z + 3 * z + 1 * z + 5);
    }
    emit MyEvent(1);
    event MyEvent(uint z);
}
