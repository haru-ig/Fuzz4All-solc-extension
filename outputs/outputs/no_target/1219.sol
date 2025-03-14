pragma solidity ^0.8.0;
contract MutatedInjection
{
    function mutatedInjection(address a, address b, address c) public pure {
        uint256[] memory array = new uint256[](3);
        array[0] = a;
        array[1] = b;
        array[2] = c;
    }
    function mutatedInjection2(uint256[] memory a, uint256[] memory b, uint256[] memory c) public pure {
        uint256[] memory d = new uint256[](3);
        d = a;
        d = b;
        d = c;
    }
}
contract Test
{
    function isContract (address x) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(x)
        }
        return size > 0;
    }

   function mutatedInjectionTest(address[] memory x, address[] memory p1, address[] memory p2, address[] memory p3) public
   {
       emit A();
       require(isContract(address(x[4])));
       require(x.length == 6);


       require(p1.length > 0);

       p2.push(type(address).max);

       p3 = new address[](4);
       for(uint i = 0; i < p3.length; i++)
       {
           p3[i] = (address(1));
       }



       p2 = new uint256[](4);
       uint8[3] memory a;
       a[1] = 3;
       a.copy(uint8[](p2));


    }
    function nonMutatedInjectionTest(address[] memory x) public
    {
        emit A();
        require(isContract(address(x[4])));
        require(x.length == 6);
        uint256 y = x[1];

        uint256[] memory array = new uint256[](x.length);
        uint256[] memory p1;
        uint256[] memory p2;
        uint256[] memory p3;

        p1 = new uint256[](1);

        p1 = new uint256[](1);
        p1.push(x[3]);

        p1.push(0);
        p2 =
