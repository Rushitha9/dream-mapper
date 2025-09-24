import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.cluster import KMeans
from sklearn.feature_extraction.text import TfidfVectorizer
import sqlite3
import json

def analyze_dreams():
    # Connect to SQLite database
    conn = sqlite3.connect('data.sql')
    
    # Load dream data
    dreams_df = pd.read_sql_query("SELECT * FROM dreams", conn)
    
    # Text analysis of dream descriptions
    vectorizer = TfidfVectorizer(max_features=100)
    dream_vectors = vectorizer.fit_transform(dreams_df['description'])
    
    # Cluster dream themes
    kmeans = KMeans(n_clusters=5)
    clusters = kmeans.fit_predict(dream_vectors)
    
    # Analyze emotional patterns
    emotions = dreams_df['mood'].value_counts().to_dict()
    
    # Analyze sleep quality correlation
    sleep_correlation = dreams_df.groupby('sleep_duration')['mood'].mean().to_dict()
    
    # Common themes extraction
    common_words = vectorizer.get_feature_names_out()
    word_freq = dream_vectors.sum(axis=0).A1
    themes = dict(zip(common_words, word_freq))
    
    # Prepare results
    analysis_results = {
        'emotions': emotions,
        'sleep_correlation': sleep_correlation,
        'themes': themes,
        'clusters': clusters.tolist()
    }
    
    # Save results to JSON
    with open('dream_analysis.json', 'w') as f:
        json.dump(analysis_results, f)
    
    return analysis_results