#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd


# In[3]:


df = pd.read_csv("C:/Users/mpree/OneDrive/Documents/AIT FINAL PROJECT DATASET.csv")
df


# In[4]:


df = df.drop_duplicates()
df


# In[5]:


df = df.drop(columns = ['Business Title', 'Unnamed: 20'])
df


# In[6]:


df["Civil Service Title"] = df["Civil Service Title"].str.rstrip("(")
df


# In[11]:


df[["Street_Address","State/Zip_Code"]] = df["Work Location 1"].str.split(',',1, expand = True)
df


# In[12]:


df = df.drop(columns = "Work Location 1")
df


# In[17]:


df["State/Zip_Code"] = df["State/Zip_Code"].str.replace('New York', 'N Y')
df


# In[18]:


df.replace('','N/A')


# In[19]:


df = df.drop(columns = "Minimum Qual Requirements")
df


# In[22]:


df = df.drop(columns = "State/Zip_Code")
df


# In[23]:


df.replace('','N/A') 


# In[27]:


df['Street_Address'] = df['Street_Address'].replace("", "N/A")
df


# In[30]:


df.to_csv(r"C:/Users/mpree/OneDrive/Documents/AIT ASSIGNMENTS/output4.csv")


# In[ ]:




