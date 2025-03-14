pragma solidity ^0.8.0;
contract B
{
   uint alphabet = 0x1;
   uint names_id = 0x2;
   uint names2_id = 0x3;
   uint namelength = 0x4;
   function modify(uint newname) public {
    uint names_id_before = names_id;
    uint names2_id_before = names2_id;
    names_id = newname;
    names2_id = 0;
    (newname, uint names_id_after) = (newname, names_id_before);
    (newname, uint names2_id_after) = (newname, names2_id_before);
    (newname, namelength) = (newname, names_id_before);
    }
}

pragma solidity ^0.8.0;
contract B
{

    mapping (uint => uint) map_names_id;
    uint alphabet_map_names_id = 0x1;
    uint map_names2_id = 0x2;
    uint map_names_id_length = 0x3;
    uint names_id_size = 0x4;

    function modify(uint name_id, uint name_length) public {
    map_names_id[name_id] = name_length;
    (uint name_before, uint name_after, uint length_before, uint length_after) = (name_id, map_names_id[name_id], names_id_size, map_names2_id);
    uint length_after_add = name_length + map_names_id_length;
    names_id_size = length_after_add;
    (uint name_before_add, uint name_after_add, uint length_before_add, uint length_after_add) = (name_before, name_after, length_before,length_after);
    uint length_after_add_map_names_id = length_after_add + alphabet_map_names_id;
    uint value_before = names_id_size - length_before_add - length_after_add_map_names_id;

    (uint name_before_add
