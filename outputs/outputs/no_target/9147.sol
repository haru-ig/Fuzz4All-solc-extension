pragma solidity ^0.8.0;
interface mutators_v2{
    function emitsEvent()  public pure;
}


pragma solidity ^0.8.0;

contract mutators  is mutators_v2 {
function doesNotEmitEvent()  public pure {
    emitsEvent;
}
}
