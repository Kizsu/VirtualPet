typedef struct
{
    int health, hunger, thirst, maxhealth, maxhunger, maxthirst;
    char name[17];
} pet_t;

int give_water_pet(pet_t* pet);
int feed_pet(pet_t* pet);
int heal_pet(pet_t* pet);
