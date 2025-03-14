pragma solidity ^0.8.0;
contract FallbackMutator {
    fallback function Mut(uint a) public {
    require(a % 70 > 0, "a is not a mut");
    emit MutLog(a);
    }
    event MutLog(uint a);
}
pragma solidity >=0.5.0 <0.8.0;
contract FallbackMutator {
    function Mut(uint a) public {
    require(a % 70 > 0, "a is not a mut");
    emit MutLog(a);
    }
    event MutLog(uint a);
}
