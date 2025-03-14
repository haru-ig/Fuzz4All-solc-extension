Arrays can have a compile-time fixed size or they can be dynamic. For storage arrays, the element type can be arbitrary (i.e. also other arrays, mappings or structs). For memory arrays, it cannot be a mapping and has to be an ABI type if it is an argument of a publicly-visible function.

An array of fixed size k and element type T is written as T[k], an array of dynamic size as T[]. As an example, an array of 5 dynamic arrays of uint is uint[][5] (note that the notation is reversed when compared to some other languages). To access the second uint in the third dynamic array, you use x[2][1] (indices are zero-based and access works in the opposite way of the declaration, i.e. x[2] shaves off one level in the type from the right).

Variables of type bytes and string are special arrays. A bytes is similar to byte[], but it is packed tightly in calldata. string is equal to bytes but does not allow length or index access (for now).

So bytes should always be preferred over byte[] because it is cheaper.

length:
Arrays have a length member to hold their number of elements. Dynamic arrays can be resized in storage (not in memory) by changing the .length member. This does not happen automatically when attempting to access elements outside the current length. The size of memory arrays is fixed (but dynamic, i.e. it can depend on runtime parameters) once they are created.
push:
Dynamic storage arrays and bytes (not string) have a member function called push that can be used to append an element at the end of the array. The function returns the new length.


contract ArrayContract {
  uint[2**20] m_aLotOfIntegers;
  // Note that the following is not a pair of arrays but an array of pairs.
  bool[2][] m_pairsOfFlags;
  // newPairs is stored in memory - the default for function arguments
  function setAllFlagPairs(bool[2][] newPairs) {
    // assignment to a storage array replaces the complete array
    m_pairsOfFlags = newPairs;
  }
  function setFlagPair(uint index, bool flagA, bool flagB) {
    // access to a non-existing index will throw an exception
    m_pairsOfFlags[index][0] = flagA;
    m_pairsOfFlags[index][1] = flagB;
  }
  function changeFlagArraySize(uint newSize) {
    // if the new size is smaller, removed array elements will be cleared
    m_pairsOfFlags.length = newSize;
  }
  function clear() {
    // these clear the arrays completely
    delete m_pairsOfFlags;
    delete m_aLotOfIntegers;
    // identical effect here
    m_pairsOfFlags.length = 0;
  }
  bytes m_byteData;
  function byteArrays(bytes data) {
    // byte arrays ("bytes") are different as they are stored without padding,
    // but can be treated identical to "uint8[]"
    m_byteData = data;
    m_byteData.length += 7;
    m_byteData[3] = 8;
    delete m_byteData[2];
  }
  function addFlag(bool[2] flag) returns (uint) {
    return m_pairsOfFlags.push(flag);
  }
  function createMemoryArray(uint size) returns (bytes) {
    // Dynamic memory arrays are created using `new`:
    uint[2][] memory arrayOfPairs = new uint[2][](size);
    // Create a dynamic byte array:
    bytes memory b = new bytes(200);
    for (uint i = 0; i < b.length; i++)
      b[i] = byte(i);
    return b;
  }
}
