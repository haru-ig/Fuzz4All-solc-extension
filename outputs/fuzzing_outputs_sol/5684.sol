pragma solidity ^0.8.0;
contract semanticallyequivalent11
{
    uint16 y = 2;
    fallback function()public{
        if(msg.value >= 0)emit Award();
        y = 1;
    }
    function emitAward()internal{
     emit Award();
    }
}
pragma solidity ^0.8.0;
contract semanticallyequivalent12
{
    uint32 internal x;
    fallback()external{
        x = 1;
    }
    function()public payable{
        if(msg.value >= 0){
            x = 1;
            emit Award;
        }else{
            x = 1;
        }
    }
    function emitAward()external{
     emit Award;
     }
}
pragma solidity ^0.8.0;
contract semanticallyequivalent13
{
    struct A
    {
        uint16 x;
        uint32 y;
    }
    function semanticallyEquivalent13()public{
        A storage data;
        A memory memoryData;
        data.x = 1;
        data.y = 2;
        memoryData.x = 1;
        memoryData.y = 2;
    }
}
pragma solidity ^0.8.0;
contract semanticallyequivalent14
{
    struct A
    {
        uint16 x;
        uint32 y;
    }
    A memory data;
    A external externalData;
    function semanticallyEquivalent14()public{
        uint16 x;
        uint32 y;
        data.x = 1;
        data.y = 2;
        externalData.x = 1;
        externalData.y = 2;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent15
{
    function emitAward()public{
     emit Award;
     }
    function Award()public{
        self.emitAward();
    }
}
pragma solidity ^0.8.0;
contract semanticallyequivalent16
{
    struct A
    {
        uint16 x;
        uint32 y;
    }
    fallback()external payable{
        A storage AData;
        AData.x = 1;
        AData.y = 2;
    }

    function isZero(uint16 x, uint32 y)external pure returns(bool){
        return x == 0 && y == 0;
    }
}
pragma solidity ^0.8.0;
contract semanticallyequivalent17
{
    uint256 y;
    fallback()public{
        if(msg.value >= 0)emit Award();
        y = 1;
    }
    function emitAward()external{
     emit Award;
     }
}
pragma solidity ^0.8.0;
contract semanticallyequivalent18
{
    uint256 y;
    fallback()public{
