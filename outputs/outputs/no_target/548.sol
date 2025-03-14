pragma solidity ^0.8.0;
contract ContractA{
    address public account;
    uint256 public x;
    uint256 public y;

    uint256 public final;

    constructor(uint256 x_, uint256 y_) public{
        x=x_;
        y=y_;
        final=x+y;
    }

    function add(uint256 i) public{
        require(i!=0,'Error');
        x=x+i;
    }

    function subtract(uint256 i) public{
        require(i!=0, "Error");
        x=x-i;
    }

    function multiply(uint256 i) public{
        require(i!=0, "Error");
        x=x*i;
    }

    function divide(uint256 i) public{
        require(i!=0, "Error");
        x=x/i;
    }

    function update() public updateOnlyIfXLessThanY(i,final){
    }

    function updateWithoutModifier() public{
        if(i>final){
            x=y;
            y=final;
            final=x+y;
        }
    }

    function updateBoth() public{
        update();
    }

    function updateWithoutModifierBoth() public{
        updateWithoutModifier();
        updateWithoutModifier();
        updateWithoutModifier();
    }

    event LogA(uint256 indexed x);
    event LogB(uint256 indexed y);
}

pragma solidity ^0.8.0;
contract ContractA{
    uint256 public x;
    uint256 public y;

    uint256 public final;

    constructor(uint256 _x, uint256 _y) public{
        x=_x;
        y=_y;
        final=x+y;
        emit LogA(initial);
    }

    function add_update(uint256 i) public add_update{
    }

    modifier add_update(){
        x=x+i;
        emit LogA(x);
        update();
        _;
    }

    function subtract(uint256 i) public{
        require(i!=0,"Error");
        x=x-i;
    }

    function divide(uint256 i) public{
        require(i!=0,"Error");
        x=x/i;
    }

    function multiply(uint256 i) public{
        require(i!=0,"Error");
        x=x*i;
    }

    function update() public updateOnlyIfXLessThanY(i,final){
    }

    function updateWithoutModifier() public{
        if(i>final){
            x=y;
            y=final;
            final=x+y;
        }
    }

    function updateBoth() public{
        update();
    }

    function updateWithoutModifierBoth() public{
        updateWithoutModifier();
        updateWithoutModifier();
        updateWithoutModifier();
    }

    function updateLogB()
