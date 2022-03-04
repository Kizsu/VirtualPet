typedef struct
{
    int health, hunger, maxhealth;
    char name[17];
} pet_t;

int feed_pet(pet_t* pet);
int heal_pet(pet_t* pet);
