#ifndef ZELDA3_JOURNAL_DATA_H
#define ZELDA3_JOURNAL_DATA_H
#include <stdint.h>
#define JOURNAL_CHARACTER_COUNT 63
int JournalData_CharacterCount(void);
int JournalData_BestiaryCount(void);
const char *JournalData_CharacterName(int i);
const char *JournalData_CharacterGroup(int i);
const char *JournalData_BestiaryName(int i);
const char *JournalData_BestiaryGroup(int i);
int JournalData_CharacterMapped(int i);
int JournalData_BestiaryMapped(int i);
uint32_t JournalData_CharacterSeen(int i);
uint32_t JournalData_BestiarySeen(int i);
uint32_t JournalData_BestiaryDefeats(int i);
void JournalData_RecordNpcDialogue(int type);
void JournalData_ObserveSprite(int slot, int type, int state, int health);
void JournalData_RecordEnemyDefeat(int slot, int type);
#endif
