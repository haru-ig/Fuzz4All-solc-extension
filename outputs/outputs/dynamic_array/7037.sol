pragma solidity ^0.8.0;
contract Test
{
    uint j=7;
    function get(uint x) public view returns (uint,uint j)
    {
        uint s;
        uint jj=j;
        return (x,jj);
    }
}

uint i;
contract TestABI
{
    constructor()
    {
        i=0;
    }
    function test() public
    {
       dynamicarray array1;
        array1=new test[];

        uint j = 42;
        array1.push(get(j));

        array1.push(array1.pop());

        uint m=7;
        array1.push(array1.pop());
        for(i=0;i<m;i++)
        {
            array1.push(get(i));
        }


        s[j] = array1[array1.length() + array1.length()/2];

        for(i=0;i<m;i++)
        {
            s[jj] = array1[array1.length()/2+i];
        }

        i+=3;
    }
}
