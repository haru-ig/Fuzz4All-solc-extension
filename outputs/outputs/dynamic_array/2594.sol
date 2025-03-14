pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod0
{
    uint[] private a;
    constructor () public {
        a=new uint[](1);

        a[1]=1;
        a[10]=1;
        a[16]=1;
        a[23]=1;
    }
    function test() public {
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod11
{
    uint[] private b;
    constructor () public {
        b=new uint[](10);
        b[0]=0;
        b[3]=0;
        b[16]=0;
        b[6]=0;
        b[27]=0;
        b[49]=0;
        b[83]=0;
        b[35]=0;
    }

    function test2() public {
        for(uint i=0;i < 10000;i++)
        {
            if(b[0]==0)
            {
                revert();
            }
        }
        for(uint i=1;i < 50;i++)
        {
            if(b[10+i-1]==0)
            {
                revert();
            }
        }
    }
    function test() public {
    }
}
pragmas to0.8.0;
contract SemanticEquality_ArrayMutations14_mod15
{
    uint[] private array;
    mapping (uint => uint)  private m2;
    constructor () public {
        array=new uint[](10);
        array[0]=1;
        array[1]=2;
        array[5]=3;
        array[17]=4;


        m2[10]=array[10];
        array[10]=1;
    }

    function test15() public {
        for(uint index=0;index<50;index++)
        {
          if((m2[index+100]==array[10+index]))
          {
              revert();
          }
        }
    }

    function test() public {
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations
