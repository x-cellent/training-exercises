# Ansible Vault Kommandos

Zunächst braucht man eine yaml Datei die verschlüsselt werden muss.

example.yml

```yml
---
test: Hello There
...
```

## Datei Verschlüsseln

```bash
$ ansible-vault encrypt example.yml
New Vault password: 
Confirm New Vault password: 
Encryption successful

$ cat example.yml
$ANSIBLE_VAULT;1.1;AES256
31623762333265313334383139336439323563313235313135396431663066383935393936323132
6462313563323335666262643031363636633263626232330a623037313737633830346239313631
39323134333737366633326662363762393633373132623030383534393762613530656333333336
3534623134643332350a313864363334633636626231613830326262346562333766376334343334
35333233383632303837353238366665356537333930343939613362373237333337
```

## Verschlüsselte Inhalte anzeigen

```bash
$ ansible-vault view example.yml 
Vault password: 
---
test: Hello There
...
```

## Editieren der verschlüsselten Inhalte

```bash
$ ansible-vault edit example.yml 
Vault password: 
```

## Datei entschlüsseln

```bash
$ ansible-vault decrypt example.yml 
Vault password: 
Decryption successful

$ cat example.yml 
---
test: Hallo Welt 
...
```
