if(index < simpleByteArray.length) {
  index = simpleByteArray[index | 0]
  index = (((index * TABLE1_STARIDE)|0) & (TABLE1_BYTES-1))|0;
  localJunk = probeTable[index|0]|0;
}