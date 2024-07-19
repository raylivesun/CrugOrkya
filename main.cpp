#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_NAME_LENGTH 100
#define MAX_EMAIL_LENGTH 100
#define MAX_PHONE_NUMBER_LENGTH 15
#define MAX_ADDRESS_LENGTH 100
#define MAX_NUMBER_OF_CONTACTS 100

typedef struct Contact {
    char name[MAX_NAME_LENGTH];
    char email[MAX_EMAIL_LENGTH];
    char phone_number[MAX_PHONE_NUMBER_LENGTH];
    char address[MAX_ADDRESS_LENGTH];
} Contact;

void print_contact(Contact* contact) {
    printf("Name: %s\n", contact->name);
    printf("Email: %s\n", contact->email);
    printf("Phone Number: %s\n", contact->phone_number);
    printf("Address: %s\n", contact->address);
}

void add_contact(Contact* contacts, int* num_contacts) {
    if (*num_contacts >= MAX_NUMBER_OF_CONTACTS) {
        printf("Error: Maximum number of contacts reached.\n");
        return;
    }

    printf("Enter contact details:\n");
    printf("Name: ");
    scanf("%s", contacts[*num_contacts].name);
    printf("Email: ");
    scanf("%s", contacts[*num_contacts].email);
    printf("Phone Number: ");
    scanf("%s", contacts[*num_contacts].phone_number);
    printf("Address: ");
    scanf("%s", contacts[*num_contacts].address);

    (*num_contacts)++;
}

void search_contact(Contact* contacts, int num_contacts) {
    char search_term[MAX_NAME_LENGTH];

    printf("Enter search term: ");
    scanf("%s", search_term);

    int found = 0;
    for (int i = 0; i < num_contacts; i++) {
        if (strstr(contacts[i].name, search_term) != NULL) {
            print_contact(&contacts[i]);
            found = 1;
        }
    }

    if (!found) {
        printf("No contacts found with the given search term.\n");
    }
}

void delete_contact(Contact* contacts, int* num_contacts) {
    char search_term[MAX_NAME_LENGTH];

    printf("Enter name of contact to delete: ");
    scanf("%s", search_term);

    int contact_index = -1;
    for (int i = 0; i < *num_contacts; i++) {
        if (strcmp(contacts[i].name, search_term) == 0) {
            contact_index = i;
            break;
        }
    }

    if (contact_index == -1) {
        printf("Contact not found.\n");
        return;
    }

    for (int i = contact_index; i < *num_contacts - 1; i++) {
        contacts[i] = contacts[i + 1];
    }

    (*num_contacts)--;
}

void edit_contact(Contact* contacts, int num_contacts) {
    char search_term[MAX_NAME_LENGTH];

    printf("Enter name of contact to edit: ");
    scanf("%s", search_term);

    int contact_index = -1;
    for (int i = 0; i < num_contacts; i++) {
        if (strcmp(contacts[i].name, search_term) == 0) {
            contact_index = i;
            break;
        }
    }

    if (contact_index == -1) {
        printf("Contact not found.\n");
        return;
    }

    printf("Enter updated contact details:\n");
    printf("Name: ");
    scanf("%s", contacts[contact_index].name);
    printf("Email: ");
    scanf("%s", contacts[contact_index].email);
    printf("Phone Number: ");
    scanf("%s", contacts[contact_index].phone_number);
    printf("Address: ");
    scanf("%s", contacts[
        contact_index].address);
}

void sort_contacts(Contact* contacts, int num_contacts) {
    Contact temp;

    for (int i = 0; i < num_contacts - 1; i++) {
        for (int j = 0; j < num_contacts - i - 1; j++) {
            if (strcmp(contacts[j].name, contacts[j + 1].name) > 0) {
                temp = contacts[j];
                contacts[j] = contacts[j + 1];
                contacts[j + 1] = temp;
            }
        }
    }
}

void save_contacts(Contact* contacts, int num_contacts, const char* filename) {
    FILE* file = fopen(filename, "w");

    if (file == NULL) {
        printf("Error: Failed to open file for writing.\n");
        return;
    }

    for (int i = 0; i < num_contacts; i++) {
        fprintf(file, "%s\n", contacts[i].name);
        fprintf(file, "%s\n", contacts[i].email);
        fprintf(file, "%s\n", contacts[i].phone_number);
        fprintf(file, "%s\n", contacts[i].address);
    }

    fclose(file);
}

void load_contacts(Contact* contacts, int* num_contacts, const char* filename) {
    FILE* file = fopen(filename, "r");

    if (file == NULL) {
        printf("Error: Failed to open file for reading.\n");
        return;
    }

    while (fscanf(file, "%s\n", contacts[*num_contacts].name)!= EOF) {
        fscanf(file, "%s\n", contacts[*num_contacts].email);
        fscanf(file, "%s\n", contacts[*num_contacts].phone_number);
        fscanf(file, "%s\n", contacts[*num_contacts].address);

        (*num_contacts)++;
    }

    fclose(file);
}

int main() {
    Contact contacts[MAX_NUMBER_OF_CONTACTS];
    int num_contacts = 0;

    load_contacts(contacts, &num_contacts, "contacts.txt");

    int choice;
    while (1) {
        printf("\nContact Manager\n");
        printf("1. Add Contact\n");
        printf("2. Search Contact\n");
        printf("3. Delete Contact\n");
        printf("4. Edit Contact\n");
        printf("5. Sort Contacts\n");
        printf("6. Save Contacts\n");
        printf("7. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                add_contact(contacts, &num_contacts);
                break;
            case 2:
                search_contact(contacts, num_contacts);
                break;
            case 3:
                delete_contact(contacts, &num_contacts);
                break;
                case 4:
                edit_contact(contacts, num_contacts);
                break;
                case 5:
                sort_contacts(contacts, num_contacts);
                break;
                case 6:
                save_contacts(contacts, num_contacts, "contacts.txt");
                break;
                case 7:
                save_contacts(contacts, num_contacts, "contacts.txt");
                printf("Contact manager has been saved.\n");
                return 0;
                default:
                printf("Invalid choice. Please try again.\n");
                break;
        }
        printf("\n");
    }
    return 0;
}

