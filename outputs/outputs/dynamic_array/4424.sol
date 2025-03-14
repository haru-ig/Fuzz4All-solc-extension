pragma solidity ^0.8.0;
contract C
{
	function F() public returns (uint[]) {
		uint[] memory arr_a = test1();
		uint[] memory arr_b = test2();
		uint arr = 9;
		uint arr2 = 3;
		uint arr_c;
		uint[] memory array;
		uint[] memory array2;
		uint[] memory array_a;
		uint[] memory array_b;
		uint[] memory array_c;
		uint arr_d;
		uint[] memory array_d;
		uint[] memory temp_a;
		uint[] memory temp_b;
		uint[] memory temp_c;
		uint[] memory temp_d;

		uint[] memory arr3 = test3();
		uint[] memory arr4 = test4(10, 15, 3);
		uint[] memory temp = test5();
		uint[] memory temp2 = test6();
		uint[] memory arr5;
		uint[] memory arr5_new;

		arr5 = arr_a.concat(arr_b);
		arr5_new = arr_a.concat(arr2);
		array = arr_a.merge();
		array2 = arr_a.merge(0);
		array_a = arr_a;
		array_b = arr_b;
		array_c = arr_a.concat(arr_b).merge();
		array_d = arr_b.merge().merge();
		temp_a = temp.merge();
		temp_b = temp2.merge();
		temp_c = temp_a.merge();
		temp_d = temp_b.merge();
		return arr5;
	}
  require(test7() == [10, 15, 3]);
  }
	function test1() public returns (uint[]) {
		uint[3] memory array;
		uint[3] memory array_a;
		uint[3] memory array_b;
		uint[3] memory array_c;
		uint[3] memory arr0 = [1, 3, 2];
		uint[3] memory arr1 = [7, 5, 8];
		uint[3] memory arr2;
		uint[3] memory arr2_a;
		uint[3] memory arr2_b;
		uint[3] memory arr2_c;
		uint[] memory arr = [12, 43, 89];
		uint[] memory arr2_arr;
		uint[]
