pragma solidity ^0.8.0;
contract MutableSemanticallyDistinct {
    constructor(uint16 id)
    public
    {
        SemanticallyDistinct memory s = SemanticallyDistinct({id: id});
    }
   semanticsDistinct function semanticallyDistinct()
    public
    pure
    returns(uint16) {
        return SemanticallyDistinct({id: semanticallyDistinct}).id;
    }
}
