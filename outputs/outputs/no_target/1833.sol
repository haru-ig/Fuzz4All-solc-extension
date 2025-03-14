pragma solidity ^0.8.0;
contract Mutate12{
    uint _2122;
    function(uint _4545, uint _465) payable public{
      _2122 = (_4545 + _465 + 1) * 10;
    }
    modifier onlyAdd {
      _2122 += 2;
      _;
    }
}
 pragma solidity ^0.8.0;
contract Mutate13{
        function(uint,uint) modifier(uint _4){return false;}
}

pragma solidity >=0.8.0 ;
contract Mutate14{
    uint public _23321;
    constructor() public{
        uint s = (_1 << 128) >> 128;
        revert( (bool(s)) );
    }
    modifier onlyAdd{
        _23321 += 1;
        _;
    }
    modifier onlyAddA() onlyAdd{
        _;
    }
}
