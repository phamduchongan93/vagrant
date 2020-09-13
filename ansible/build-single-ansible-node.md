## state of a Node
 - tell 

## Command Module
# Sample Command
```
  ansible pi -a "touch /tmp/file"
```


## File Copy
```
ansible -i inv pi -m copy -a "src=testfile dest=newtestfile"
```

## Add new line to file 
```
ansible -i inv pi -m lineinfile -a "path=/home/ansible/newtestfile line='I am the law' state=present"
```

### Insert a new line before a line
```
ansible -i inv pi -m lineinfile -a "path=/home/ansible/newtestfile line='anpham' insertbefore='I am'"
```
