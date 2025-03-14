pragma solidity ^0.8.0;
contract Mutatesigning {
    uint public myuint;
    function setuint(uint newuint)external{
        myuint = newuint;
    }
    function setsiguint(uint _newuint)publiconlycontract{
        myuint = newuint;
    }
}
contract Mutatesigned {
    uint public myuint;
    function setuint2(uint _newuint)externalonlycontract{
        myuint = _newuint;
    }
    function setsiguint2(uint _newuint)publiconlycontractonlysig{
        myuint = _newuint;
    }
}
contract UsesMutability {
   Mutate mymyContract;
    function UsesMutability()public{
        mymyContract = new Mutate();
    }
}
contract Mutatable {
    Mutate mymyContract;
    function Mutatable()public{
        mymyContract = new Mutate();
    }
}
contract UsesMutability2 {
    Mutated2 mymyContract;
    function UsesMutability2()public{
        mymyContract = new Mutated2();
    }
}
contract Mutatable2 {
    Mutated2 mymyContract;
    function Mutatable2()public{
        mymyContract = new Mutated2();
    }
}
contract UsesMutability3 {
    Mutatesigning mymyContract;
    function UsesMutability3()public{
        mymyContract = new Mutatesigning();
    }
}
contract Mutatable3{
    Mutatesigning mymyContract;
    function Mutatable3()public{
        mymyContract = new Mutatesigning();
    }
}
contract UsesMutability4 {
    Mutatesigned mymyContract;
    function UsesMutability4()public{
        mymyContract = new Mutatesigned();
    }
}
contract Mutatable4{
    Mutatesigned mymyContract;
    function Mutatable4()public{
        mymyContract = new Mutatesigned();
    }
}
contract UsesMutability5 {
    usesMutability4 mutatable;
    function UsesMutability5()publicview{
        mutatable.myuint=100;
    }
}
contract UsesMutate2 {
    usesMutate2 mutatable;
    function UsesMutate2()public{
        mutatable=new usesMutate2();
    }
}
contract Mutate3 {
}
